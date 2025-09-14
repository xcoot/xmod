.class public final Lcom/android/server/knox/SeamLessSwitchHandler$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/SeamLessSwitchHandler;

.field public final synthetic val$extra:Ljava/lang/String;

.field public final synthetic val$feature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/SeamLessSwitchHandler;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->this$0:Lcom/android/server/knox/SeamLessSwitchHandler;

    .line 5
    .line 6
    const-string p1, "2040"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->val$feature:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->val$extra:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const-string v0, "SeamLessSwitchHandler"

    .line 2
    .line 3
    const-string/jumbo v1, "insertSALog tracking_id=493-399-9953101, feature="

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v3, "tracking_id"

    .line 12
    .line 13
    .line 14
    const-string v4, "493-399-9953101"

    .line 15
    .line 16
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v3, "type"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v4, "ev"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "feature"

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->val$feature:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->val$extra:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const-string/jumbo v4, "extra"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    new-instance v3, Landroid/content/Intent;

    .line 50
    .line 51
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v4, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string/jumbo v2, "com.sec.android.diagmonagent"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->this$0:Lcom/android/server/knox/SeamLessSwitchHandler;

    .line 70
    .line 71
    iget-object v2, v2, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    .line 75
    .line 76
    sget-boolean v2, Lcom/android/server/knox/SeamLessSwitchHandler;->DEBUG:Z

    .line 77
    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->val$feature:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, " ,extra="

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->val$extra:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :goto_1
    const-string/jumbo v1, "insertSALog Exception"

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_2
    return-void
.end method
