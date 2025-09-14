.class public final Lcom/android/server/display/DisplayManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo p1, "com.sec.df.changed.DISPLAY_MANAGER.ENABLE_DEBUG_LOG"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "PROPERTY_CARGO"

    .line 19
    .line 20
    const-class p1, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 21
    .line 22
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 27
    .line 28
    sget-boolean p1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 29
    .line 30
    const-string p2, "ENABLE_DEBUG_LOG"

    .line 31
    .line 32
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    sput-boolean p0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 37
    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p1, "Debug value changed to "

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-boolean p1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " by DynamicFeature "

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "DynamicFeature_Display"

    .line 60
    .line 61
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method
