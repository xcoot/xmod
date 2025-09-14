.class public abstract Lcom/samsung/android/server/pm/SALoggingHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static sendSettingLog(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "RoleLogger"

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const-string v0, "PackageManager"

    .line 17
    .line 18
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v2, "tracking_id"

    .line 24
    .line 25
    .line 26
    const-string v3, "7IH-399-559998"

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "pkg_name"

    .line 32
    .line 33
    .line 34
    const-string v3, "System"

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v2, "type"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v3, "st"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v2, "setting"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroid/content/Intent;

    .line 55
    .line 56
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v4, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const-string v4, "com.sec.android.diagmonagent"

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v3, Lcom/samsung/android/server/pm/SALoggingHelper$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-direct {v3, v1}, Lcom/samsung/android/server/pm/SALoggingHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
